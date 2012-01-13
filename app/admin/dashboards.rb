ActiveAdmin::Dashboards.build do
  section "Recent Jobs" do
    table_for Job.order("updated_at desc").limit(5) do
      column :title do |job|
        link_to job.title, [:admin, job]
      end
      column :place do |job|
        link_to job.place.title, [:admin, job.place]
      end
      column :updated_at
      column :created_at
    end
    strong { link_to "View All Jobs", admin_jobs_path }
  end

  section "Recent Pages" do
    table_for Page.order("updated_at desc").limit(5) do
      column :title do |page|
        link_to page.title, [:admin, page]
      end
      column :updated_at
      column :created_at
    end
    strong { link_to "View All Pages", admin_pages_path }
  end

  section "Recent Places" do
    table_for Place.order("updated_at desc").limit(5) do
      column :title do |place|
        link_to place.title, [:admin, place]
      end
      column :updated_at
      column :created_at
    end
    strong { link_to "View All Places", admin_places_path }
  end

# Define your dashboard sections here. Each block will be
# rendered on the dashboard in the context of the view. So just
# return the content which you would like to display.

# == Simple Dashboard Section
# Here is an example of a simple dashboard section
#
#   section "Recent Posts" do
#     ul do
#       Post.recent(5).collect do |post|
#         li link_to(post.title, admin_post_path(post))
#       end
#     end
#   end

# == Render Partial Section
# The block is rendered within the context of the view, so you can
# easily render a partial rather than build content in ruby.
#
#   section "Recent Posts" do
#     div do
#       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
#     end
#   end

# == Section Ordering
# The dashboard sections are ordered by a given priority from top left to
# bottom right. The default priority is 10. By giving a section numerically lower
# priority it will be sorted higher. For example:
#
#   section "Recent Posts", :priority => 10
#   section "Recent User", :priority => 1
#
# Will render the "Recent Users" then the "Recent Posts" sections on the dashboard.

end
