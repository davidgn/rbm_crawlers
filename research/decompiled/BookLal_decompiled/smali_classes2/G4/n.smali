.class public final LG4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN/r;
.implements Lq1/a;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    .line 2
    new-array p1, p1, [I

    iput-object p1, p0, LG4/n;->b:Ljava/lang/Object;

    return-void

    .line 3
    :pswitch_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, LG4/n;->b:Ljava/lang/Object;

    const/16 p1, 0x64

    .line 6
    iput p1, p0, LG4/n;->a:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(I[LJ/h;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, LG4/n;->a:I

    .line 14
    iput-object p2, p0, LG4/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lh/f;->f(Landroid/content/Context;I)I

    move-result v0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Lh/b;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 10
    invoke-static {p1, v0}, Lh/f;->f(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Lh/b;-><init>(Landroid/view/ContextThemeWrapper;)V

    iput-object v1, p0, LG4/n;->b:Ljava/lang/Object;

    .line 11
    iput v0, p0, LG4/n;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG4/n;->b:Ljava/lang/Object;

    iput p2, p0, LG4/n;->a:I

    return-void
.end method


# virtual methods
.method public a()Lh/f;
    .locals 10

    new-instance v0, Lh/f;

    iget-object v1, p0, LG4/n;->b:Ljava/lang/Object;

    check-cast v1, Lh/b;

    iget-object v2, v1, Lh/b;->a:Landroid/view/ContextThemeWrapper;

    iget v3, p0, LG4/n;->a:I

    invoke-direct {v0, v2, v3}, Lh/f;-><init>(Landroid/view/ContextThemeWrapper;I)V

    iget-object v2, v1, Lh/b;->f:Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, v0, Lh/f;->f:Lh/e;

    if-eqz v2, :cond_0

    iput-object v2, v4, Lh/e;->v:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lh/b;->e:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iput-object v2, v4, Lh/e;->d:Ljava/lang/CharSequence;

    iget-object v5, v4, Lh/e;->t:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, v1, Lh/b;->d:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iput-object v2, v4, Lh/e;->r:Landroid/graphics/drawable/Drawable;

    iput v5, v4, Lh/e;->q:I

    iget-object v6, v4, Lh/e;->s:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, v4, Lh/e;->s:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v2, v1, Lh/b;->c:I

    if-eqz v2, :cond_4

    iput-object v3, v4, Lh/e;->r:Landroid/graphics/drawable/Drawable;

    iput v2, v4, Lh/e;->q:I

    iget-object v6, v4, Lh/e;->s:Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v4, Lh/e;->s:Landroid/widget/ImageView;

    iget v5, v4, Lh/e;->q:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    iget-object v2, v1, Lh/b;->g:Ljava/lang/String;

    if-eqz v2, :cond_5

    iput-object v2, v4, Lh/e;->e:Ljava/lang/String;

    iget-object v5, v4, Lh/e;->u:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v2, v1, Lh/b;->h:Ljava/lang/String;

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v5, v1, Lh/b;->i:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, -0x1

    invoke-virtual {v4, v6, v2, v5}, Lh/e;->b(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_1
    iget-object v2, v1, Lh/b;->j:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object v5, v1, Lh/b;->k:Landroid/content/DialogInterface$OnClickListener;

    const/4 v6, -0x2

    invoke-virtual {v4, v6, v2, v5}, Lh/e;->b(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    iget-object v2, v1, Lh/b;->m:Ljava/lang/Object;

    const/4 v5, 0x1

    if-eqz v2, :cond_c

    iget v2, v4, Lh/e;->z:I

    iget-object v6, v1, Lh/b;->b:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/AlertController$RecycleListView;

    iget-boolean v6, v1, Lh/b;->o:Z

    if-eqz v6, :cond_8

    iget v6, v4, Lh/e;->A:I

    goto :goto_3

    :cond_8
    iget v6, v4, Lh/e;->B:I

    :goto_3
    iget-object v7, v1, Lh/b;->m:Ljava/lang/Object;

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    new-instance v7, Lh/d;

    iget-object v8, v1, Lh/b;->a:Landroid/view/ContextThemeWrapper;

    const v9, 0x1020014

    invoke-direct {v7, v8, v6, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    :goto_4
    iput-object v7, v4, Lh/e;->w:Landroid/widget/ListAdapter;

    iget v6, v1, Lh/b;->p:I

    iput v6, v4, Lh/e;->x:I

    iget-object v6, v1, Lh/b;->n:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_a

    new-instance v6, Lh/a;

    invoke-direct {v6, v1, v4}, Lh/a;-><init>(Lh/b;Lh/e;)V

    invoke-virtual {v2, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_a
    iget-boolean v6, v1, Lh/b;->o:Z

    if-eqz v6, :cond_b

    invoke-virtual {v2, v5}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    :cond_b
    iput-object v2, v4, Lh/e;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    :cond_c
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v1, Lh/b;->l:Lk/n;

    if-eqz v1, :cond_d

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_d
    return-object v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, LG4/n;->a:I

    iget-object v1, p0, LG4/n;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, LG4/n;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, LG4/n;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public d(I)Z
    .locals 2

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iget v1, p0, LG4/n;->a:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Le1/A;Lb1/h;)Le1/A;
    .locals 3

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p1}, Le1/A;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, LG4/n;->b:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, LG4/n;->a:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-interface {p1}, Le1/A;->a()V

    new-instance p1, Ll1/y;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ll1/y;-><init>([B)V

    return-object p1
.end method

.method public f(II)V
    .locals 3

    iget-object v0, p0, LG4/n;->b:Ljava/lang/Object;

    check-cast v0, [I

    array-length v1, v0

    if-lt p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    iget v2, p0, LG4/n;->a:I

    or-int/2addr v1, v2

    iput v1, p0, LG4/n;->a:I

    aput p2, v0, p1

    return-void
.end method
