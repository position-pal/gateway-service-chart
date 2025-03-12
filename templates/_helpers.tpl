{{- define "gateway-service.labels" -}}
app: {{ .Values.serviceName}}
{{- end -}}

{{- define "gateway-service.container" -}}
- name: {{ .Values.serviceName}}
  image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
  ports:
  - name: http
    containerPort: {{ .Values.outputPort }}
    protocol: TCP
  env:
    - name: LOCATION_SERVICE_HTTP_URL
      value: {{ .Values.locationServiceHttpUrl | quote }}
    - name: LOCATION_API_VERSION
      value: {{ .Values.locationApiVersion | quote }}
    - name: LOCATION_SERVICE_GRPC_URL
      value: {{ .Values.locationServiceGrpcUrl | quote }}
    - name: CHAT_SERVICE_HTTP_URL
      value: {{ .Values.chatServiceHttpUrl | quote }}
    - name: CHAT_API_VERSION
      value: {{ .Values.chatApiVersion | quote }}
    - name: CHAT_SERVICE_URL
      value: {{ .Values.chatServiceGrpcUrl | quote }}
    - name: USER_SERVICE_URL
      value: {{ .Values.userServiceGrpcUrl | quote }}
    - name: NOTIFICATION_SERVICE_GRPC_URL
      value: {{ .Values.notificationServiceGrpcUrl | quote }}
    - name: PORT
      value: {{ .Values.outputPort | quote }}
{{- end -}}