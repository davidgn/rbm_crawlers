.class public final Lcom/google/android/material/datepicker/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static final d:I


# instance fields
.field public final a:Lcom/google/android/material/datepicker/m;

.field public b:LJ2/e;

.field public final c:Lcom/google/android/material/datepicker/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/material/datepicker/u;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/n;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/m;Lcom/google/android/material/datepicker/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/m;

    iput-object p2, p0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/b;

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public final a(I)Ljava/lang/Long;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/m;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->d()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/n;->b()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->d()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, v0, Lcom/google/android/material/datepicker/m;->a:Ljava/util/Calendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/u;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/m;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->d()I

    move-result v1

    iget v0, v0, Lcom/google/android/material/datepicker/m;->e:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public final getCount()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/m;

    iget v1, v0, Lcom/google/android/material/datepicker/m;->e:I

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/m;->d()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/n;->a(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/m;

    iget v0, v0, Lcom/google/android/material/datepicker/m;->d:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/datepicker/n;->b:LJ2/e;

    if-nez v3, :cond_0

    new-instance v3, LJ2/e;

    invoke-direct {v3, v2}, LJ2/e;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/material/datepicker/n;->b:LJ2/e;

    :cond_0
    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    if-nez p2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c0086

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/datepicker/n;->a:Lcom/google/android/material/datepicker/m;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/m;->d()I

    move-result p3

    sub-int p3, p1, p3

    if-ltz p3, :cond_4

    iget v3, p2, Lcom/google/android/material/datepicker/m;->e:I

    if-lt p3, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    add-int/2addr p3, v0

    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lcom/google/android/material/datepicker/m;->a:Ljava/util/Calendar;

    invoke-static {v3}, Lcom/google/android/material/datepicker/u;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/google/android/material/datepicker/u;->b()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3, v4, v0}, Ljava/util/Calendar;->set(II)V

    invoke-static {p3}, Lcom/google/android/material/datepicker/u;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Ljava/util/Calendar;->get(I)I

    invoke-virtual {p3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v7, 0x7

    invoke-virtual {p3, v7}, Ljava/util/Calendar;->getMaximum(I)I

    invoke-virtual {p3, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    iget p2, p2, Lcom/google/android/material/datepicker/m;->c:I

    const-string p3, "UTC"

    if-ne p2, v3, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v3, "MMMEd"

    invoke-static {v3, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    invoke-static {p3}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v3, "yMMMEd"

    invoke-static {v3, p2}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object p2

    invoke-static {p3}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const/16 p2, 0x8

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/n;->a(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p3, p0, Lcom/google/android/material/datepicker/n;->c:Lcom/google/android/material/datepicker/b;

    iget-object p3, p3, Lcom/google/android/material/datepicker/b;->c:Lcom/google/android/material/datepicker/d;

    iget-wide v3, p3, Lcom/google/android/material/datepicker/d;->a:J

    cmp-long p1, p1, v3

    if-gez p1, :cond_8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/n;->b:LJ2/e;

    iget-object p1, p1, LJ2/e;->d:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/datepicker/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lz2/g;

    invoke-direct {p2}, Lz2/g;-><init>()V

    new-instance p3, Lz2/g;

    invoke-direct {p3}, Lz2/g;-><init>()V

    iget-object v0, p1, Lcom/google/android/material/datepicker/c;->f:Lz2/k;

    invoke-virtual {p2, v0}, Lz2/g;->setShapeAppearanceModel(Lz2/k;)V

    invoke-virtual {p3, v0}, Lz2/g;->setShapeAppearanceModel(Lz2/k;)V

    iget-object v0, p1, Lcom/google/android/material/datepicker/c;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, v0}, Lz2/g;->k(Landroid/content/res/ColorStateList;)V

    iget v0, p1, Lcom/google/android/material/datepicker/c;->e:I

    int-to-float v0, v0

    iget-object v1, p2, Lz2/g;->a:Lz2/f;

    iput v0, v1, Lz2/f;->j:F

    invoke-virtual {p2}, Lz2/g;->invalidateSelf()V

    iget-object v0, p2, Lz2/g;->a:Lz2/f;

    iget-object v1, v0, Lz2/f;->d:Landroid/content/res/ColorStateList;

    iget-object v3, p1, Lcom/google/android/material/datepicker/c;->d:Landroid/content/res/ColorStateList;

    if-eq v1, v3, :cond_7

    iput-object v3, v0, Lz2/f;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lz2/g;->onStateChange([I)Z

    :cond_7
    iget-object v0, p1, Lcom/google/android/material/datepicker/c;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-direct {v4, v0, p2, p3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    iget-object p1, p1, Lcom/google/android/material/datepicker/c;->a:Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    move-object v3, p2

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    sget-object p1, LM/a0;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-object v2

    :cond_8
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
