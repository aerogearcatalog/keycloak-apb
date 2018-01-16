readonly keystore_dir=/opt/jboss/keycloak/keystore
readonly keycloak_keystore=$keystore_dir/application.keystore
readonly default_keystore=${JAVA_HOME}/jre/lib/security/cacerts
readonly keycloak_store_password=${1:-changeit}

keytool --noprompt -importkeystore -srckeystore ${default_keystore} -destkeystore ${keycloak_keystore} -srcstorepass changeit -deststorepass ${keycloak_store_password}
keytool --noprompt -importcert -file ${keystore_dir}/cert.pem -storepass ${keycloak_store_password} -keystore $keycloak_keystore
