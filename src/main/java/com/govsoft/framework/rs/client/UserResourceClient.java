package com.govsoft.framework.rs.client;

import java.net.URI;
import java.util.List;

import javax.ws.rs.core.MediaType;

import com.govsoft.framework.rs.dto.UserDTO;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.UniformInterfaceException;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class UserResourceClient {
	private WebResource client;

	public void setBaseUrl(String baseUrl) {
		Client jerseyClient = Client.create(new DefaultClientConfig());
		client = jerseyClient.resource(baseUrl);
	}

	public List<UserDTO> getAllUser() {
		return client.path("/users").accept(MediaType.APPLICATION_JSON).get(
				new GenericType<List<UserDTO>>() {
				});
	}

	public UserDTO getUser(String id) {
		return client.path("/users/" + id).accept(MediaType.APPLICATION_JSON)
				.get(UserDTO.class);
	}

	public URI createUser(UserDTO user) {
		ClientResponse response = client.path("/users").entity(user,
				MediaType.APPLICATION_JSON).post(ClientResponse.class);
		if (201 == response.getStatus()) {
			return response.getLocation();
		} else {
			throw new UniformInterfaceException(response);
		}
	}	
}
