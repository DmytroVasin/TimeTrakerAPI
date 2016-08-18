Story.delete_all
Period.delete_all
Task.delete_all

unscheduled = Period.create(name: 'Unscheduled')
overdue     = Period.create(name: 'Overdue')
period_1    = Period.create(name: 'Sprint 1')
period_2    = Period.create(name: 'Sprint 2')

story_1 = Story.create(
  period: unscheduled,
  story_type: Story.story_types.keys.sample,
  title: 'LA-1535: Education Grants',
  description: 'Prepare your students for cloud computing with free credits.'
)

Story.create(
  period: unscheduled,
  story_type: Story.story_types.keys.sample,
  title: 'LA-1538: Customer with sufficient point',
  description: 'Prepare your students for cloud computing with free credits.'
)

Story.create(
  period: overdue,
  story_type: Story.story_types.keys.sample,
  title: 'LA-1301: July Webinar Series',
  description: 'Learn about containers, Node.js and migration to the cloud.'
)

Story.create(
  period: overdue,
  story_type: Story.story_types.keys.sample,
  title: 'LA-1420: Disallow repeated invites',
  description: 'Learn about containers, Node.js and migration to the cloud.'
)

Story.create(
  period: period_1,
  story_type: Story.story_types.keys.sample,
  title: 'LA-1133: VM Migration',
  description: 'Resources for migrating a VM to Google Compute Engine.'
)

Story.create(
  period: period_1,
  story_type: Story.story_types.keys.sample,
  title: 'LA-1393: Changes related to low balance errors',
  description: 'Resources for migrating a VM to Google Compute Engine.'
)

Story.create(
  period: period_2,
  story_type: Story.story_types.keys.sample,
  title: 'LA-1581: Generate alert for customers when points are imported',
  description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'
)

Story.create(
  period: period_2,
  story_type: Story.story_types.keys.sample,
  title: 'LA-1642: An alphanumeric biller code will be added to all accounts',
  description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'
)

Task.create(
  time: '90',
  comment: 'Create ZERO education!',
  story_id: story_1.id
)

Task.create(
  time: '90',
  comment: 'Create first education!',
  story_id: story_1.id
)


Task.create(
  time: '30',
  comment: 'Create second education!',
  story_id: story_1.id,
  created_at: DateTime.yesterday
)


Task.create(
  time: '10',
  comment: 'Create five education!',
  story_id: story_1.id,
  created_at: DateTime.yesterday
)
