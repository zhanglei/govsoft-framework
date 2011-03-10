package com.govsoft.framework.rs.server;

import java.net.URI;
import java.util.List;

import javax.annotation.Resource;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.core.Response.Status;

import org.dozer.DozerBeanMapper;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.exception.ConstraintViolationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import com.google.common.collect.Lists;
import com.govsoft.framework.model.User;
import com.govsoft.framework.rs.dto.UserDTO;

@Component
@Path("/users")
public class UserResourceService {

	private static final String CHARSET = ";charset=UTF-8";

	private static Logger logger = LoggerFactory
			.getLogger(UserResourceService.class);

	@Context
	private UriInfo uriInfo;

	@Resource(name = "userService")
	private com.govsoft.framework.service.UserService userService;

	@Resource(name = "dozer")
	private DozerBeanMapper dozer;

	@GET
	@Produces( { MediaType.APPLICATION_JSON,
			MediaType.APPLICATION_XML + CHARSET })
	public List<UserDTO> getAllUser() {
		try {
			List<User> entityList = userService.findAll();

			List<UserDTO> dtoList = Lists.newArrayList();
			for (User userEntity : entityList) {
				dtoList.add(dozer.map(userEntity, UserDTO.class));
			}
			return dtoList;
		} catch (RuntimeException e) {
			logger.error(e.getMessage(), e);
			throw new WebApplicationException();
		}
	}

	@GET
	@Path("{id}")
	@Produces( { MediaType.APPLICATION_JSON,
			MediaType.APPLICATION_XML + CHARSET })
	public UserDTO getUser(@PathParam("id") String id) {
		try {
			User entity = userService.findById(id);

			UserDTO dto = dozer.map(entity, UserDTO.class);

			return dto;
		} catch (ObjectNotFoundException e) {
			String message = "用户不存在(id:" + id + ")";
			logger.error(message, e);
			throw buildException(Status.NOT_FOUND, message);
		} catch (RuntimeException e) {
			logger.error(e.getMessage(), e);
			throw new WebApplicationException();
		}
	}

	@POST
	@Consumes( { MediaType.APPLICATION_JSON,
			MediaType.APPLICATION_XML + CHARSET })
	public Response createUser(UserDTO user) {

		try {

			User userEntity = dozer.map(user, User.class);

			userService.save(userEntity);

			URI createdUri = uriInfo.getAbsolutePathBuilder().path(
					userEntity.getId().toString()).build();

			return Response.created(createdUri).build();
		} catch (ConstraintViolationException e) {
			String message = "新建用户参数存在唯一性冲突(用户:" + user + ")";
			logger.error(message, e);
			throw buildException(Status.BAD_REQUEST.getStatusCode(), message);
		} catch (RuntimeException e) {
			logger.error(e.getMessage(), e);
			throw new WebApplicationException();
		}
	}

	/**
	 * 创建WebApplicationException, 使用标准状态码与自定义信息.
	 */
	private WebApplicationException buildException(Status status, String message) {
		return new WebApplicationException(Response.status(status).entity(
				message).type(MediaType.TEXT_PLAIN).build());
	}

	/**
	 * 创建WebApplicationException, 使用自定义状态码与自定义信息.
	 */
	private WebApplicationException buildException(int status, String message) {
		return new WebApplicationException(Response.status(status).entity(
				message).type(MediaType.TEXT_PLAIN).build());
	}
}
