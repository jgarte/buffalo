typedef struct {
  const char* build_command;
  const char* test_command;
} config_t;

void config_init(config_t* config);

void config_parse(config_t* config);