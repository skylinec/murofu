import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  user_id: DS.attr('number'),
  category_id: DS.attr('number'),
  category: DS.belongsTo('category'),
  user: DS.belongsTo('user')
});
