Story.delete_all
Period.delete_all

unscheduled = Period.create(name: 'Unscheduled')
overdue     = Period.create(name: 'Overdue')
period_1    = Period.create(name: 'Sprint 1')
period_2    = Period.create(name: 'Sprint 2')

Story.create(period: unscheduled, story_type: 'yellow', title: 'Education Grants',    description: 'Prepare your students for cloud computing with free credits.')
Story.create(period: overdue,     story_type: 'green',  title: 'July Webinar Series', description: 'Learn about containers, Node.js and migration to the cloud.')
Story.create(period: period_1,    story_type: 'red',    title: 'VM Migration',        description: 'Resources for migrating a VM to Google Compute Engine.')
Story.create(period: period_2,    story_type: 'grey',   title: 'VM Migration',        description: 'Resources for migrating a VM to Google Compute Engine.')
