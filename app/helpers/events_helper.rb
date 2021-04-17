module EventsHelper
    def form_error(_form)
        render partial: 'error' if event.errors.any?
      end
end
