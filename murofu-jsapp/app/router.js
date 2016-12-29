import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('category-view', { path: '/c/:category_id' });
  this.route('topic', { path: '/t/:topic_id' });
  this.route('user', { path: '/u/:user_id' });
  this.route('categories', { path: '/cs' });
  this.route('topic-view');
});

export default Router;
