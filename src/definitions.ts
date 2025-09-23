export interface IdNowPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
