# Position Pal Helm Starter

This is a Helm chart for deploying the Position Pal Gateway Service. The chart includes all necessary configurations and dependencies to run the service in a Kubernetes environment.

## Configure the Chart
For a complete list of configuration options, please refer to the `values.yaml` file in the chart directory. Below are some common configurations you may want to customize:

- `image.repository`: The Docker image repository for the gateway service.
- `image.tag`: The Docker image tag for the gateway service.
- `replicaNumber`: The number of replicas for the gateway service deployment.

- `outputPort`: The port on which the service will be exposed.

- `locationServiceHttpUrl`: The HTTP URL for the location service.
- `locationApiVersion`: The API version for the location service.
- `locationServiceGrpcUrl`: The gRPC URL for the location service.
- `chatServiceHttpUrl`: The HTTP URL for the chat service.
- `chatApiVersion`: The API version for the chat service.
- `chatServiceGrpcUrl`: The gRPC URL for the chat service.
- `userServiceGrpcUrl`: The gRPC URL for the user service.
- `notificationServiceGrpcUrl`: The gRPC URL for the notification service.

## Install the Chart
To install the chart with the release name `my-release`:

```bash
helm install my-release . --namespace position-pal --create-namespace
```
