.class public final Lcom/google/android/material/datepicker/q;
.super Lu0/y;
.source "SourceFile"


# instance fields
.field public final d:Landroid/view/ContextThemeWrapper;

.field public final e:Lcom/google/android/material/datepicker/b;

.field public final f:LC4/o;

.field public final l:I


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;Lcom/google/android/material/datepicker/b;LC4/o;)V
    .locals 3

    invoke-direct {p0}, Lu0/y;-><init>()V

    iget-object v0, p2, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/m;

    iget-object v1, p2, Lcom/google/android/material/datepicker/b;->d:Lcom/google/android/material/datepicker/m;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/m;->a(Lcom/google/android/material/datepicker/m;)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p2, Lcom/google/android/material/datepicker/b;->b:Lcom/google/android/material/datepicker/m;

    invoke-virtual {v1, v0}, Lcom/google/android/material/datepicker/m;->a(Lcom/google/android/material/datepicker/m;)I

    move-result v0

    if-gtz v0, :cond_2

    sget v0, Lcom/google/android/material/datepicker/n;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/2addr v1, v0

    const v0, 0x101020d

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/k;->i(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/datepicker/q;->d:Landroid/view/ContextThemeWrapper;

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/material/datepicker/q;->l:I

    iput-object p2, p0, Lcom/google/android/material/datepicker/q;->e:Lcom/google/android/material/datepicker/b;

    iput-object p3, p0, Lcom/google/android/material/datepicker/q;->f:LC4/o;

    iget-object p1, p0, Lu0/y;->a:Lu0/z;

    invoke-virtual {p1}, Lu0/z;->a()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu0/y;->b:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "currentPage cannot be after lastPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstPage cannot be after currentPage"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->e:Lcom/google/android/material/datepicker/b;

    iget v0, v0, Lcom/google/android/material/datepicker/b;->f:I

    return v0
.end method

.method public final b(I)J
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->e:Lcom/google/android/material/datepicker/b;

    iget-object v0, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/m;

    iget-object v0, v0, Lcom/google/android/material/datepicker/m;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/u;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    const/4 p1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {v0}, Lcom/google/android/material/datepicker/u;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(Lu0/W;I)V
    .locals 3

    check-cast p1, Lcom/google/android/material/datepicker/p;

    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->e:Lcom/google/android/material/datepicker/b;

    iget-object v1, v0, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/m;

    iget-object v1, v1, Lcom/google/android/material/datepicker/m;->a:Ljava/util/Calendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/u;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->add(II)V

    new-instance p2, Lcom/google/android/material/datepicker/m;

    invoke-direct {p2, v1}, Lcom/google/android/material/datepicker/m;-><init>(Ljava/util/Calendar;)V

    iget-object v1, p1, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/m;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/material/datepicker/p;->z:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/google/android/material/datepicker/p;->A:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    const v1, 0x7f090243

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/n;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/n;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/m;

    invoke-virtual {p2, v1}, Lcom/google/android/material/datepicker/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/n;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1

    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/n;

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/n;-><init>(Lcom/google/android/material/datepicker/m;Lcom/google/android/material/datepicker/b;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x101020d

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/k;->i(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lu0/G;

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/material/datepicker/q;->l:I

    invoke-direct {p1, v0, v1}, Lu0/G;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/google/android/material/datepicker/p;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/google/android/material/datepicker/p;-><init>(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/material/datepicker/p;

    invoke-direct {p1, p2, v1}, Lcom/google/android/material/datepicker/p;-><init>(Landroid/widget/LinearLayout;Z)V

    :goto_0
    return-object p1
.end method
