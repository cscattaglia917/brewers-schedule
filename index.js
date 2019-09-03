process.env[‘PATH’] = process.env[‘PATH’] + ‘:’ + process.env[‘LAMBDA_TASK_ROOT’]
exports.handler = function(event, context, callback) {
  const exec = require('child_process').exec;
  exec('./brewers.sh', (error, stdout, stderr) => {
    if (error) {
      callback(error);
    }
    callback(null, stdout);
  });
}
