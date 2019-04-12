class PoolSelection < ApplicationRecord
  belongs_to :character
  belongs_to :status
  belongs_to :player_pool


  def points
    selected_status_label = self.status.label
    character_status_label = self.character.status.label

    if selected_status_label != character_status_label
      points_awarded = 0
    elsif selected_status_label == "Dead" && character_status_label == "White Walker"
      points_awarded = 1
    else
      if selected_status_label == "White Walker"
        points_awarded = 2
      else
        points_awarded = 1
      end
    end

    return points_awarded
  end

  def unassigned_points
    selected_status_label = self.status.label
    character = self.character
    locked = character.locked?
    if !locked && selected_status_label == "Dead"
      unassigned_points = 1
    elsif !locked && selected_status_label == "White Walker"
      unassigned_points = 2
      if character.status.label == "Dead"
        unassigned_points = 1
      end
    else
      unassigned_points = 0
    end
    
    return unassigned_points
  end

end
