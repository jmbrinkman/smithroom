ROLES="
  roles/aiplatform.admin
  roles/bigquery.admin
  roles/cloudbuild.builds.editor
  roles/cloudbuild.integrations.editor
  roles/iam.serviceAccountAdmin
  roles/resourcemanager.projectIamAdmin
  roles/storage.admin
  roles/iam.serviceAccountUser
  roles/discoveryengine.user
"
for ROLE in $ROLES; do
    gcloud projects add-iam-policy-binding $PROJECT_ID --member=serviceAccount:"$PROJECT_NUMBER-compute@developer.gserviceaccount.com" --role=$ROLE
done
