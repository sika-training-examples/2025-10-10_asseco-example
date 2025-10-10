{{- define "name" -}}
  {{- printf "%s" .Chart.Name }}
{{- end }}

{{- define "replicas" -}}
  {{- if .Values.replicas }}
    {{- .Values.replicas }}
  {{- else }}
    {{- .Values.global.replicas }}
  {{- end }}
{{- end }}

{{- define "host" -}}
  {{- if .Values.ingress.host }}
    {{- .Values.ingress.host }}
  {{- else }}
    {{- .Values.global.host }}
  {{- end }}
{{- end }}
