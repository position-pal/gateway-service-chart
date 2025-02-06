{{- define "gateway-service.labels" -}}
app: {{ .Values.config.servicename }}
{{- end -}}

{{- define "gateway-service.container" -}}
- name: {{ .Values.config.servicename }}
  image: "{{ .Values.config.image.repository }}:{{ .Values.config.image.tag }}"
  ports:
  - name: http
    containerPort: {{ .Values.config.outputPort }}
    protocol: TCP
  env:
    - name: LOCATION_SERVICE_HTTP_URL
      value: {{ .Values.config.locationServiceHttpUrl | quote }}
    - name: LOCATION_API_VERSION
      value: {{ .Values.config.locationApiVersion | quote }}
    - name: LOCATION_SERVICE_GRPC_URL
      value: {{ .Values.config.locationServiceGrpcUrl | quote }}
    - name: CHAT_SERVICE_HTTP_URL
      value: {{ .Values.config.chatServiceHttpUrl | quote }}
    - name: CHAT_API_VERSION
      value: {{ .Values.config.chatApiVersion | quote }}
    - name: CHAT_SERVICE_GRPC_URL
      value: {{ .Values.config.chatServiceGrpcUrl | quote }}
    - name: USER_SERVICE_URL
      value: {{ .Values.config.userServiceGrpcUrl | quote }}
    - name: NOTIFICATION_SERVICE_GRPC_URL
      value: {{ .Values.config.notificationServiceGrpcUrl | quote }}
{{- end -}}