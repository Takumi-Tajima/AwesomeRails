class Seminar < ApplicationRecord
  validates :name, :place, :start_at, :end_at, :content, presence: true
  validates :name, length: { maximum: 50, message: '名前は50文字以内で入力してください' }
  validates :place, length: { maximum: 100, message: '場所は100文字以内で入力してください' }
  validates :content, length: { maximum: 2000, message: '詳細は2000文字以内で入力してください' }
  validate :start_at_should_be_before_end_at
  validate :start_at_check

  private

  def start_at_should_be_before_end_at
    errors.add(:end_at, 'は開始時刻より遅い時間を選択してください') if self.start_at > self.end_at
  end

  def start_at_check
    errors.add(:start_at, 'は現在時刻よりも遅い時刻を選択してください') if self.start_at < Time.current
  end
end
