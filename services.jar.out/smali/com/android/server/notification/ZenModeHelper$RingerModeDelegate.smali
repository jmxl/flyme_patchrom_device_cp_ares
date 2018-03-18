.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1038
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2
    .param p1, "streams"    # I

    .prologue
    .line 1044
    or-int/lit8 p1, p1, 0x26

    .line 1049
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1050
    or-int/lit8 p1, p1, 0x18

    .line 1056
    :goto_0
    return p1

    .line 1053
    :cond_0
    and-int/lit8 p1, p1, -0x19

    goto :goto_0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 5
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 1002
    move v3, p2

    .line 1003
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_1

    const/4 v0, 0x1

    .line 1004
    .local v0, "isChange":Z
    :goto_0
    const/4 v4, 0x1

    if-ne p4, v4, :cond_2

    const/4 v1, 0x1

    .line 1006
    .local v1, "isVibrate":Z
    :goto_1
    const/4 v2, -0x1

    .line 1007
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 1031
    :cond_0
    :goto_2
    :pswitch_0
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1033
    return v3

    .line 1003
    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_0

    .line 1004
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isVibrate":Z
    goto :goto_1

    .line 1009
    .restart local v2    # "newZen":I
    :pswitch_1
    if-nez v0, :cond_0

    .line 1016
    move v3, p4

    goto :goto_2

    .line 1007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 4
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 961
    if-eq p1, p2, :cond_3

    const/4 v0, 0x1

    .line 963
    .local v0, "isChange":Z
    :goto_0
    move v2, p2

    .line 965
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 966
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 992
    :cond_0
    :goto_1
    :pswitch_0
    if-nez v0, :cond_1

    if-eq p4, p2, :cond_2

    .line 993
    :cond_1
    invoke-static {p1, p2, p3, p4, p2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 996
    :cond_2
    return p2

    .line 961
    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_0

    .line 968
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_1
    if-eqz v0, :cond_0

    iget-boolean v3, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 966
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    const-string/jumbo v0, "ZenModeHelper"

    return-object v0
.end method
