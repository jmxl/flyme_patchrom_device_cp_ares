.class Lcom/android/server/wm/DragResizeMode;
.super Ljava/lang/Object;
.source "DragResizeMode.java"


# static fields
.field static final DRAG_RESIZE_MODE_DOCKED_DIVIDER:I = 0x1

.field static final DRAG_RESIZE_MODE_FREEFORM:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isModeAllowedForStack(II)Z
    .locals 3
    .param p0, "stackId"    # I
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 43
    packed-switch p1, :pswitch_data_0

    .line 51
    return v1

    .line 45
    :pswitch_0
    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x5

    if-ne p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 47
    :pswitch_1
    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    .line 48
    if-ne p0, v0, :cond_3

    .line 47
    :cond_2
    :goto_1
    return v0

    .line 49
    :cond_3
    if-eqz p0, :cond_2

    move v0, v1

    goto :goto_1

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
