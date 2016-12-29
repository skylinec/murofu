import Ember from 'ember';

export default Ember.Route.extend({
  model(params) {
    return Ember.RSVP.hash({
      categories: this.store.query('category', params.category_id),
      topics: this.store.query('topic', params.category_id)
    });
  },

  setupController(controller, model) {
    this._super(...arguments);
    Ember.set(controller, 'categories', model.categories);
    Ember.set(controller, 'topics', model.topics);
  }
});
