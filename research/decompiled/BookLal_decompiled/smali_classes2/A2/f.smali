.class public final LA2/f;
.super LM/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LA2/f;->d:I

    iput-object p1, p0, LA2/f;->e:Ljava/lang/Object;

    invoke-direct {p0}, LM/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget v0, p0, LA2/f;->d:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, p2}, LM/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :sswitch_0
    invoke-super {p0, p1, p2}, LM/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p1, p0, LA2/f;->e:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, p1, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    return-void

    :sswitch_1
    invoke-super {p0, p1, p2}, LM/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p1, p0, LA2/f;->e:Ljava/lang/Object;

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager;->e:LI0/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LI0/a;->a()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroidx/viewpager/widget/ViewPager;->e:LI0/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LI0/a;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    iget v0, p1, Landroidx/viewpager/widget/ViewPager;->f:I

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    iget p1, p1, Landroidx/viewpager/widget/ViewPager;->f:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Landroid/view/View;LN/i;)V
    .locals 7

    const/high16 v0, 0x100000

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, LA2/f;->e:Ljava/lang/Object;

    iget-object v5, p0, LM/b;->a:Landroid/view/View$AccessibilityDelegate;

    iget v6, p0, LA2/f;->d:I

    packed-switch v6, :pswitch_data_0

    iget-object p2, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v4, Lcom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean p1, v4, Lcom/google/android/material/internal/NavigationMenuItemView;->C:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void

    :pswitch_0
    iget-object p2, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v4, Lcom/google/android/material/internal/CheckableImageButton;

    iget-boolean p1, v4, Lcom/google/android/material/internal/CheckableImageButton;->e:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    iget-boolean p1, v4, Lcom/google/android/material/internal/CheckableImageButton;->d:Z

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void

    :pswitch_1
    iget-object v0, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Lcom/google/android/material/button/MaterialButtonToggleGroup;->p:I

    check-cast v4, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    move v5, v0

    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v0, v6, :cond_3

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, p1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/google/android/material/button/MaterialButton;

    if-eqz v6, :cond_2

    invoke-virtual {v4, v0}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->c(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/2addr v5, v3

    :cond_2
    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    :goto_1
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton;->s:Z

    invoke-static {p1, v2, v3, v1, v3}, LN/h;->a(ZIIII)LN/h;

    move-result-object p1

    invoke-virtual {p2, p1}, LN/i;->i(LN/h;)V

    return-void

    :pswitch_2
    iget-object v1, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v4, Ll2/g;

    iget-boolean p1, v4, Ll2/g;->o:Z

    if-eqz p1, :cond_4

    invoke-virtual {p2, v0}, LN/i;->a(I)V

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :goto_2
    return-void

    :pswitch_3
    iget-object p2, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    check-cast v4, Lcom/google/android/material/datepicker/j;

    iget-object p1, v4, Lcom/google/android/material/datepicker/j;->o:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    const p1, 0x7f1100b2

    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const p1, 0x7f1100b0

    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_4
    iget-object v0, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v0}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p1, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, LN/i;->h(Ljava/lang/CharSequence;)V

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    iget-object p1, v4, Landroidx/viewpager/widget/ViewPager;->e:LI0/a;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, LI0/a;->a()I

    move-result p1

    if-le p1, v3, :cond_6

    move v2, v3

    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {v4, v3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, LN/i;->a(I)V

    :cond_7
    invoke-virtual {v4, v1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_8

    const/16 p1, 0x2000

    invoke-virtual {p2, p1}, LN/i;->a(I)V

    :cond_8
    return-void

    :pswitch_5
    iget-object v1, p2, LN/i;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p2, v0}, LN/i;->a(I)V

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    iget v0, p0, LA2/f;->d:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, LM/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :pswitch_1
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, LA2/f;->e:Ljava/lang/Object;

    check-cast v0, Ll2/g;

    iget-boolean v1, v0, Ll2/g;->o:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ll2/g;->cancel()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, LM/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    :goto_0
    return p1

    :pswitch_2
    invoke-super {p0, p1, p2, p3}, LM/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x1000

    const/4 v0, 0x0

    iget-object v1, p0, LA2/f;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    if-eq p2, p1, :cond_4

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_3

    :cond_2
    move p3, v0

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v1, Landroidx/viewpager/widget/ViewPager;->f:I

    sub-int/2addr p1, p3

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p3}, Landroidx/viewpager/widget/ViewPager;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v1, Landroidx/viewpager/widget/ViewPager;->f:I

    add-int/2addr p1, p3

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :goto_1
    return p3

    :pswitch_3
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_5

    iget-object p1, p0, LA2/f;->e:Ljava/lang/Object;

    check-cast p1, LA2/n;

    check-cast p1, LA2/q;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, LA2/n;->a(I)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    invoke-super {p0, p1, p2, p3}, LM/b;->g(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    :goto_2
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
