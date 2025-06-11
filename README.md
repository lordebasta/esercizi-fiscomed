### Version

Ruby: 3.4.4  
Rails: 8.0.2  
#TODO: For better portability I should study if there is a Ruby Version Manager and how it wants this information in a project.

### System dependencies

### Configuration

### Database creation

**Tasks**  
`rails g scaffold Task title:text! description:text completed:boolean!`  
I left the timestamp fields voluntarily. Added manually `default: false` in `completed` field.

### Database initialization

### How to run the test suite

### Services (job queues, cache servers, search engines, etc.)

### Deployment instructions
