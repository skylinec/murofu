import { moduleForModel, test } from 'ember-qunit';

moduleForModel('topic', 'Unit | Model | topic', {
  // Specify the other units that are required for this test.
  needs: ['model:user', 'model:category', 'model:post']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
