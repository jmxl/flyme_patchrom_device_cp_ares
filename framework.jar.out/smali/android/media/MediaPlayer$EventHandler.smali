.class Landroid/media/MediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic this$0:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;Landroid/media/MediaPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaPlayer;
    .param p2, "mp"    # Landroid/media/MediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2895
    iput-object p1, p0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    .line 2896
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2897
    iput-object p2, p0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 2895
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get2(Landroid/media/MediaPlayer;)J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v27, v28, v30

    if-nez v27, :cond_0

    .line 2903
    const-string/jumbo v27, "MediaPlayer"

    const-string/jumbo v28, "mediaplayer went away with unhandled events"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    return-void

    .line 2906
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    sparse-switch v27, :sswitch_data_0

    .line 3094
    const-string/jumbo v27, "MediaPlayer"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Unknown message type "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    return-void

    .line 2909
    :sswitch_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2918
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get7(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v18

    .line 2919
    .local v18, "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    if-eqz v18, :cond_1

    .line 2920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 2921
    :cond_1
    return-void

    .line 2910
    .end local v18    # "onPreparedListener":Landroid/media/MediaPlayer$OnPreparedListener;
    :catch_0
    move-exception v11

    .line 2915
    .local v11, "e":Ljava/lang/RuntimeException;
    const/16 v27, 0x64

    const/16 v28, 0x1

    const/16 v29, -0x3f2

    const/16 v30, 0x0

    .line 2914
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 2916
    .local v13, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2925
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "msg2":Landroid/os/Message;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v15

    .line 2926
    .local v15, "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v15, :cond_2

    .line 2927
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 2929
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    .line 2930
    return-void

    .line 2934
    .end local v15    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v26

    .line 2935
    .local v26, "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v26, :cond_3

    .line 2936
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaPlayer$TimeProvider;->onStopped()V

    .line 2901
    .end local v26    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :cond_3
    :goto_1
    :sswitch_3
    return-void

    .line 2944
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v26

    .line 2945
    .restart local v26    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v26, :cond_3

    .line 2946
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v27, v0

    const/16 v28, 0x7

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/16 v27, 0x1

    :goto_2
    invoke-virtual/range {v26 .. v27}, Landroid/media/MediaPlayer$TimeProvider;->onPaused(Z)V

    goto :goto_1

    :cond_4
    const/16 v27, 0x0

    goto :goto_2

    .line 2952
    .end local v26    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get3(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v14

    .line 2953
    .local v14, "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    if-eqz v14, :cond_5

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-interface {v14, v0, v1}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 2955
    :cond_5
    return-void

    .line 2958
    .end local v14    # "onBufferingUpdateListener":Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get8(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-result-object v19

    .line 2959
    .local v19, "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    if-eqz v19, :cond_6

    .line 2960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 2966
    .end local v19    # "onSeekCompleteListener":Landroid/media/MediaPlayer$OnSeekCompleteListener;
    :cond_6
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v26

    .line 2967
    .restart local v26    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v26, :cond_7

    .line 2968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/media/MediaPlayer$TimeProvider;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 2971
    :cond_7
    return-void

    .line 2974
    .end local v26    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get13(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v23

    .line 2975
    .local v23, "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    if-eqz v23, :cond_8

    .line 2977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    .line 2976
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    .line 2979
    :cond_8
    return-void

    .line 2982
    .end local v23    # "onVideoSizeChangedListener":Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    :sswitch_9
    const-string/jumbo v27, "MediaPlayer"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Error ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    const/4 v12, 0x0

    .line 2984
    .local v12, "error_was_handled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get5(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v16

    .line 2985
    .local v16, "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    if-eqz v16, :cond_9

    .line 2986
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v12

    .line 2989
    .end local v12    # "error_was_handled":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get4(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v15

    .line 2990
    .restart local v15    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    if-eqz v15, :cond_a

    if-eqz v12, :cond_b

    .line 2994
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/media/MediaPlayer;->-wrap1(Landroid/media/MediaPlayer;Z)V

    .line 2995
    return-void

    .line 2991
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    goto :goto_3

    .line 2998
    .end local v15    # "onCompletionListener":Landroid/media/MediaPlayer$OnCompletionListener;
    .end local v16    # "onErrorListener":Landroid/media/MediaPlayer$OnErrorListener;
    :sswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    sparse-switch v27, :sswitch_data_1

    .line 3041
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get6(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v17

    .line 3042
    .local v17, "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    if-eqz v17, :cond_d

    .line 3043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 3046
    :cond_d
    return-void

    .line 3001
    .end local v17    # "onInfoListener":Landroid/media/MediaPlayer$OnInfoListener;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 3002
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Parcel;

    .line 3003
    .local v24, "parcel":Landroid/os/Parcel;
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 3004
    .local v8, "currentNotifyTimeUS":J
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3005
    .local v6, "currentMaxAmplitude":I
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    .line 3006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/OnUpdateAmplitudeListener;

    move-result-object v27

    if-eqz v27, :cond_e

    .line 3007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get12(Landroid/media/MediaPlayer;)Landroid/media/OnUpdateAmplitudeListener;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v8, v9, v6}, Landroid/media/OnUpdateAmplitudeListener;->onAmplitudeUpdate(Landroid/media/MediaPlayer;JI)V

    .line 3010
    .end local v6    # "currentMaxAmplitude":I
    .end local v8    # "currentNotifyTimeUS":J
    .end local v24    # "parcel":Landroid/os/Parcel;
    :cond_e
    return-void

    .line 3013
    :sswitch_c
    const-string/jumbo v27, "MediaPlayer"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "Info ("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ")"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3017
    :sswitch_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-wrap0(Landroid/media/MediaPlayer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3026
    :goto_5
    :sswitch_e
    const/16 v27, 0x322

    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 3028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v27

    if-eqz v27, :cond_c

    .line 3029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get15(Landroid/media/MediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    goto/16 :goto_4

    .line 3018
    :catch_1
    move-exception v11

    .line 3020
    .restart local v11    # "e":Ljava/lang/RuntimeException;
    const/16 v27, 0x64

    const/16 v28, 0x1

    const/16 v29, -0x3f2

    const/16 v30, 0x0

    .line 3019
    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 3021
    .restart local v13    # "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/media/MediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 3034
    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v13    # "msg2":Landroid/os/Message;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get16(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$TimeProvider;

    move-result-object v26

    .line 3035
    .restart local v26    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    if-eqz v26, :cond_c

    .line 3036
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    const/16 v28, 0x2bd

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    const/16 v27, 0x1

    :goto_6
    invoke-virtual/range {v26 .. v27}, Landroid/media/MediaPlayer$TimeProvider;->onBuffering(Z)V

    goto/16 :goto_4

    :cond_f
    const/16 v27, 0x0

    goto :goto_6

    .line 3048
    .end local v26    # "timeProvider":Landroid/media/MediaPlayer$TimeProvider;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get11(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedTextListener;

    move-result-object v22

    .line 3049
    .local v22, "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    if-nez v22, :cond_10

    .line 3050
    return-void

    .line 3051
    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    if-nez v27, :cond_12

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    .line 3061
    :cond_11
    :goto_7
    return-void

    .line 3054
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 3055
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Parcel;

    .line 3056
    .restart local v24    # "parcel":Landroid/os/Parcel;
    new-instance v25, Landroid/media/TimedText;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3057
    .local v25, "text":Landroid/media/TimedText;
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    .line 3058
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/media/MediaPlayer$OnTimedTextListener;->onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V

    goto :goto_7

    .line 3064
    .end local v22    # "onTimedTextListener":Landroid/media/MediaPlayer$OnTimedTextListener;
    .end local v24    # "parcel":Landroid/os/Parcel;
    .end local v25    # "text":Landroid/media/TimedText;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get9(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnSubtitleDataListener;

    move-result-object v20

    .line 3065
    .local v20, "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    if-nez v20, :cond_13

    .line 3066
    return-void

    .line 3068
    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v27, v0

    if-eqz v27, :cond_14

    .line 3069
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Parcel;

    .line 3070
    .restart local v24    # "parcel":Landroid/os/Parcel;
    new-instance v7, Landroid/media/SubtitleData;

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3071
    .local v7, "data":Landroid/media/SubtitleData;
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    .line 3072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v7}, Landroid/media/MediaPlayer$OnSubtitleDataListener;->onSubtitleData(Landroid/media/MediaPlayer;Landroid/media/SubtitleData;)V

    .line 3074
    .end local v7    # "data":Landroid/media/SubtitleData;
    .end local v24    # "parcel":Landroid/os/Parcel;
    :cond_14
    return-void

    .line 3078
    .end local v20    # "onSubtitleDataListener":Landroid/media/MediaPlayer$OnSubtitleDataListener;
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->this$0:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/media/MediaPlayer;->-get10(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;

    move-result-object v21

    .line 3079
    .local v21, "onTimedMetaDataAvailableListener":Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;
    if-nez v21, :cond_15

    .line 3080
    return-void

    .line 3082
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/os/Parcel;

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 3083
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/os/Parcel;

    .line 3084
    .restart local v24    # "parcel":Landroid/os/Parcel;
    invoke-static/range {v24 .. v24}, Landroid/media/TimedMetaData;->createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;

    move-result-object v10

    .line 3085
    .local v10, "data":Landroid/media/TimedMetaData;
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V

    .line 3086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$EventHandler;->mMediaPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v10}, Landroid/media/MediaPlayer$OnTimedMetaDataAvailableListener;->onTimedMetaDataAvailable(Landroid/media/MediaPlayer;Landroid/media/TimedMetaData;)V

    .line 3088
    .end local v10    # "data":Landroid/media/TimedMetaData;
    .end local v24    # "parcel":Landroid/os/Parcel;
    :cond_16
    return-void

    .line 2906
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_8
        0x6 -> :sswitch_4
        0x7 -> :sswitch_4
        0x8 -> :sswitch_2
        0x9 -> :sswitch_7
        0x63 -> :sswitch_10
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_11
        0xca -> :sswitch_12
    .end sparse-switch

    .line 2998
    :sswitch_data_1
    .sparse-switch
        0x2bc -> :sswitch_c
        0x2bd -> :sswitch_f
        0x2be -> :sswitch_f
        0x322 -> :sswitch_d
        0x323 -> :sswitch_e
        0x387 -> :sswitch_b
    .end sparse-switch
.end method
