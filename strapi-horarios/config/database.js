module.exports = ({ env }) => ({
  connection: {
    client: 'mysql',
    connection: {
      host: env('DATABASE_HOST', 'localhost'),
      port: env.int('DATABASE_PORT', 3306),
      database: env('DATABASE_NAME', 'horario_netlife_app'),
      user: env('DATABASE_USERNAME', 'root'),
      password: env('DATABASE_PASSWORD', ''),


      /*host: env('DATABASE_HOST', '172.24.66.5'),
      port: env.int('DATABASE_PORT', 3306),
      database: env('DATABASE_NAME', 'horario_netlife_app'),
      user: env('DATABASE_USERNAME', 'root'),
      password: env('DATABASE_PASSWORD', 'N3tl1f32023!'),*/
      //ssl: env.bool('DATABASE_SSL', false),
      
    },
  },
});
