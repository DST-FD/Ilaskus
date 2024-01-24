local function ModifyIceOver(widget)

    function widget.OnIceChange(self)

		local temp = self.owner.components.temperature ~= nil
			and self.owner.components.temperature:GetCurrent()
			or (self.owner.player_classified ~= nil and
				self.owner.player_classified.currenttemperature or TUNING.STARTING_TEMP)

		local num_steps = 4

		local ownerTemp = self.owner.components.temperature
		-- local minimumThresh = ownerTemp ~= nil and ownerTemp.freezingtemp + 5 or 5
		local all_up_thresh = ownerTemp ~= nil and {ownerTemp.freezingtemp + 5, ownerTemp.freezingtemp, ownerTemp.freezingtemp - 5, ownerTemp.freezingtemp - 10} or {5, 0, -5, -10}

		local freeze_sounds =
		{
			"dontstarve/winter/freeze_1st",
			"dontstarve/winter/freeze_2nd",
			"dontstarve/winter/freeze_3rd",
			"dontstarve/winter/freeze_4th",
		}
		--local all_down_thresh = {8, 3, -2, -7}

		local isup = false
		while all_up_thresh[self.laststep + 1] ~= nil and
			temp < all_up_thresh[self.laststep + 1] and
			self.laststep < num_steps
			-- and (temp < 0 or TheWorld.state.iswinter or GetLocalTemperature(self.owner) < 0)
			do

			self.laststep = self.laststep + 1
			isup = true
		end

		if isup then
			TheFrontEnd:GetSound():PlaySound(freeze_sounds[self.laststep])
		else
			while all_up_thresh[self.laststep] ~= nil and
				temp > all_up_thresh[self.laststep] and
				self.laststep > 0 do

				self.laststep = self.laststep - 1
			end
		end

		if self.laststep == 0 then
			self.alpha_min_target = 1
		else
			local alpha_mins = {
				.7, .5, .3, 0
			}
			self.alpha_min_target = alpha_mins[self.laststep]

			self:StartUpdating()
		end
	end
end

AddClassPostConstruct("widgets/iceover", ModifyIceOver)