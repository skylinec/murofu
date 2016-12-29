import DS from 'ember-data';

export default DS.Model.extend({
  content: DS.attr('string'),
  topic: DS.belongsTo('toppic'),
  user: DS.belongsTo('user')
});
