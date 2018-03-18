.class Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ZeusisRadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zeusis/widget/radio/ZeusisRadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;


# direct methods
.method static synthetic -set0(Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method

.method private constructor <init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    .prologue
    invoke-direct {p0, p1}, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 340
    iget-object v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    if-ne p1, v2, :cond_3

    instance-of v2, p2, Landroid/widget/RadioButton;

    if-eqz v2, :cond_3

    .line 341
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    .line 343
    .local v1, "id":I
    if-ne v1, v4, :cond_0

    .line 344
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 345
    invoke-virtual {p2, v1}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v2, p2

    .line 347
    nop

    nop

    .line 348
    iget-object v3, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-static {v3}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-get1(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v3

    .line 347
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 361
    .end local v1    # "id":I
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v2, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 339
    :cond_2
    return-void

    .line 349
    :cond_3
    iget-object v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    if-ne p1, v2, :cond_1

    .line 350
    instance-of v2, p2, Landroid/view/ViewGroup;

    .line 349
    if-eqz v2, :cond_1

    .line 351
    iget-object v3, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    move-object v2, p2

    nop

    nop

    invoke-virtual {v3, v2}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v0

    .line 352
    .local v0, "btn":Landroid/widget/RadioButton;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 354
    .restart local v1    # "id":I
    if-ne v1, v4, :cond_4

    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 358
    :cond_4
    iget-object v2, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    invoke-static {v2}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->-get1(Lcom/zeusis/widget/radio/ZeusisRadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 367
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    if-ne p1, v0, :cond_2

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 368
    nop

    nop

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 374
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 366
    :cond_1
    return-void

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    if-ne p1, v0, :cond_0

    .line 370
    instance-of v0, p2, Landroid/view/ViewGroup;

    .line 369
    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Lcom/zeusis/widget/radio/ZeusisRadioGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/zeusis/widget/radio/ZeusisRadioGroup;

    move-object v0, p2

    nop

    nop

    invoke-virtual {v1, v0}, Lcom/zeusis/widget/radio/ZeusisRadioGroup;->findRadioButton(Landroid/view/ViewGroup;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
