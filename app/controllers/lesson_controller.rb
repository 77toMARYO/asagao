# coding: utf-8
class LessonController < ApplicationController
=begin
    def step1
        render text: "こんにちは、#{params[:name]}さん"
    end
    def step2
    render text: params[:controller] + "#" + params[:action]
    end
    def step3
        redirect_to action: "step4"
    end
    def step4
        render text: "step4に移動しました"
    end
    def step5
        flash[:notice] = "step6に移動します"
        redirect_to action: "step6"
    end
    def step6
        render text: flash[:notice]
    end
=end
    def step8
        @price = (2000 * 1.05).floor
    end
   before_filter :do_before, only: :step7

    def step7
        render text: @message
    end

    def step9
        @price = 1000.floor
        render "step8"
    end
    
    def step10
        @comment = "<script>alert('危険！')</script>こんにちは。"
    end

    def step11
        @comment = "<strong>安全なHTML</strong>"
    end

    def step12
        @population = 704414
        @surface =  141.31
    end
    
    def step13
        @time = Time.now
    end

    def step14
        @population = 127767944
    end

    private
    def do_before
        @message = "こんにちは"
    end
    
end
