require 'spec_helper'

describe Category do
  it {should have_many(:videos)}

    describe "#recent_videos" do

      it "returns the videos in the reverse chronical order by created_at" do
        comedy = Category.create(name: "comedy")
        futurama = Video.create(title: "Futurama", description: "Space Travel!", category: comedy, created_at: 1.day.ago)
        south_park = Video.create(title: "South Park", description: "Crazy Kids", category: comedy)
        expect(comedy.recent_videos).to eq([south_park, futurama])
      end

      it "it returns all the videos if there are less than 6 videos" do
        comedy = Category.create(name: "comedy")
        futurama = Video.create(title: "Futurama", description: "Space Travel!", category: comedy, created_at: 1.day.ago)
        south_park = Video.create(title: "South Park", description: "Crazy Kids", category: comedy)
        expect(comedy.recent_videos.count).to eq(2)
      end

      it "it returns 6 videos if there are more than 6 videos" do
        comedy = Category.create(name: "comedy")
        7.times {Video.create(title: "foo", description: "bar", category: comedy)}
        expect(comedy.recent_videos.count).to eq(6)
      end

      it "returns the most recent 6 videos" do
        comedy = Category.create(name: "comedy")
        6.times {Video.create(title: "foo", description: "bar", category: comedy)}
        tonights_show = Video.create(title: "Tonights Show", description: "talk show", category: comedy, created_at: 1.day.ago)
        expect(comedy.recent_videos).not_to include(tonights_show)
      end

      it "return empty array if the category does not have any videos" do
        comedy = Category.create(name: "comedy")
        expect(comedy.recent_videos).to eq([])
      end

    end
end