module TagsHelper

  def taggables_path(taggable_type, tag_name)
    case taggable_type
    when 'debate'
      debates_path(search: tag_name)
    when 'proposal'
      proposals_path(search: tag_name)
    when 'budget/investment'
      budget_investments_path(@budget, search: tag_name)
    when 'legislation/proposal'
      legislation_process_proposals_path(@process, search: tag_name)
    # Custom nomads
    when 'tombamento'
      tombamentos_path(search: tag_name)
    when 'sugestion_asset'
      sugestion_assets_path(search: tag_name)
    else
      '#'
    end
  end

  def taggable_path(taggable)
    taggable_type = taggable.class.name.underscore
    case taggable_type
    when 'debate'
      debate_path(taggable)
    when 'proposal'
      proposal_path(taggable)
    when 'budget/investment'
      budget_investment_path(taggable.budget_id, taggable)
    when 'legislation/proposal'
      legislation_process_proposal_path(@process, taggable)
    when 'tombamento'
      tombamento_path(taggable)
    when 'sugestion_asset'
      sugestion_asset_path(search: tag_name)
    else
      '#'
    end
  end

end
