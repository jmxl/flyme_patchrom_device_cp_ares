.class Lcom/zeusis/widget/radio/ZeusisRadioGroup$1;
.super Ljava/lang/Object;
.source "ZeusisRadioGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zeusis/widget/radio/ZeusisRadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

.field final synthetic val$button:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/radio/ZeusisRadioGroup;
    .param p2, "val$button"    # Landroid/widget/RadioButton;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$1;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    iput-object p2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$1;->val$button:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$1;->val$button:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 75
    return-void
.end method
