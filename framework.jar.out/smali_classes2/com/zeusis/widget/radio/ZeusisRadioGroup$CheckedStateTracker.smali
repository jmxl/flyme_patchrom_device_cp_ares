.class Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ZeusisRadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/radio/ZeusisRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;


# direct methods
.method private constructor <init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;-><init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 313
    iget-object v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-static {v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-get2(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-set0(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Z)Z

    .line 318
    iget-object v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-static {v1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-get0(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 319
    iget-object v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    iget-object v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-static {v2}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-get0(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)I

    move-result v2

    invoke-static {v1, v2, v3}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-wrap1(Lcom/zeusis/widget/radio/ZeusisRadioGroup;IZ)V

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-static {v1, v3}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-set0(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Z)Z

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 324
    .local v0, "id":I
    iget-object v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$CheckedStateTracker;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-static {v1, v0}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-wrap0(Lcom/zeusis/widget/radio/ZeusisRadioGroup;I)V

    .line 311
    return-void
.end method
