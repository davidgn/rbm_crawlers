.class public final Lcom/google/android/material/datepicker/w;
.super Lu0/y;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/material/datepicker/j;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/j;)V
    .locals 0

    invoke-direct {p0}, Lu0/y;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/w;->d:Lcom/google/android/material/datepicker/j;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/w;->d:Lcom/google/android/material/datepicker/j;

    iget-object v0, v0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/b;

    iget v0, v0, Lcom/google/android/material/datepicker/b;->e:I

    return v0
.end method

.method public final e(Lu0/W;I)V
    .locals 5

    check-cast p1, Lcom/google/android/material/datepicker/v;

    iget-object v0, p0, Lcom/google/android/material/datepicker/w;->d:Lcom/google/android/material/datepicker/j;

    iget-object v1, v0, Lcom/google/android/material/datepicker/j;->c:Lcom/google/android/material/datepicker/b;

    iget-object v1, v1, Lcom/google/android/material/datepicker/b;->a:Lcom/google/android/material/datepicker/m;

    iget v1, v1, Lcom/google/android/material/datepicker/m;->c:I

    add-int/2addr v1, p2

    iget-object p1, p1, Lcom/google/android/material/datepicker/v;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const v2, 0x7f1100a1

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/google/android/material/datepicker/j;->f:LJ2/e;

    invoke-static {}, Lcom/google/android/material/datepicker/u;->b()Ljava/util/Calendar;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-ne p2, v1, :cond_0

    iget-object p1, p1, LJ2/e;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p1, LJ2/e;->b:Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c008f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance p2, Lcom/google/android/material/datepicker/v;

    invoke-direct {p2, p1}, Lcom/google/android/material/datepicker/v;-><init>(Landroid/widget/TextView;)V

    return-object p2
.end method
