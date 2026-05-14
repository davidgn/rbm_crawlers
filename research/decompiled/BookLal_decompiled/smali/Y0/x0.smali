.class public final LY0/x0;
.super Lu0/y;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public e:Ljava/util/ArrayList;

.field public f:Landroid/content/Context;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LY0/x0;->d:I

    invoke-direct {p0}, Lu0/y;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LY0/x0;->d:I

    .line 2
    invoke-direct {p0}, Lu0/y;-><init>()V

    .line 3
    iput-object p1, p0, LY0/x0;->f:Landroid/content/Context;

    .line 4
    iput-object p2, p0, LY0/x0;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static h(LY0/x0;Ljava/lang/String;)Lh/f;
    .locals 4

    new-instance v0, LG4/n;

    iget-object v1, p0, LY0/x0;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, LG4/n;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, LG4/n;->b:Ljava/lang/Object;

    check-cast v1, Lh/b;

    const-string v2, "Delete Book"

    iput-object v2, v1, Lh/b;->e:Ljava/lang/CharSequence;

    const-string v2, "Do you want to Delete?"

    iput-object v2, v1, Lh/b;->g:Ljava/lang/String;

    const v2, 0x7f08009e

    iput v2, v1, Lh/b;->c:I

    new-instance v2, LY0/Y;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v3}, LY0/Y;-><init>(Ljava/lang/Object;Ljava/io/Serializable;I)V

    const-string p0, "Delete"

    iput-object p0, v1, Lh/b;->h:Ljava/lang/String;

    iput-object v2, v1, Lh/b;->i:Landroid/content/DialogInterface$OnClickListener;

    new-instance p0, LY0/f0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LY0/f0;-><init>(I)V

    const-string p1, "Cancel"

    iput-object p1, v1, Lh/b;->j:Ljava/lang/String;

    iput-object p0, v1, Lh/b;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0}, LG4/n;->a()Lh/f;

    move-result-object p0

    return-object p0
.end method

.method public static i(JLjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "\n"

    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long/2addr v1, p0

    const-wide/32 v3, 0xea60

    div-long v3, v1, v3

    const-wide/32 v5, 0x36ee80

    div-long/2addr v1, v5

    const-wide/16 v5, 0x1

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0x14

    if-le p0, p1, :cond_0

    const-string p0, "\njust now"

    return-object p0

    :cond_0
    const-string p0, " just now"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    const-wide/16 v5, 0x3c

    cmp-long p2, v3, v5

    const-string v5, " "

    if-gez p2, :cond_2

    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "m"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/16 v3, 0x18

    cmp-long p2, v1, v3

    if-gez p2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "h"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm a"

    invoke-direct {p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    const-string p0, ".."

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LY0/x0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LY0/x0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, LY0/x0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)J
    .locals 2

    iget v0, p0, LY0/x0;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lu0/y;->b(I)J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    int-to-long v0, p1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)I
    .locals 1

    iget v0, p0, LY0/x0;->d:I

    packed-switch v0, :pswitch_data_0

    return p1

    :pswitch_0
    iget-object v0, p0, LY0/x0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/booklal/booklal/Message;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/booklal/booklal/Message;->getSenderId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lu0/W;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, v0, LY0/x0;->d:I

    packed-switch v7, :pswitch_data_0

    check-cast v1, LY0/K0;

    iget-object v3, v0, LY0/x0;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY0/L0;

    iget-object v3, v1, LY0/K0;->C:Landroid/widget/TextView;

    iget-object v7, v2, LY0/L0;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, LY0/L0;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v7, v1, LY0/K0;->D:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, LY0/K0;->E:Landroid/widget/TextView;

    iget-object v7, v2, LY0/L0;->c:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, LY0/K0;->z:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/bumptech/glide/b;->e(Landroid/widget/ImageView;)Lcom/bumptech/glide/i;

    move-result-object v7

    iget-object v8, v2, LY0/L0;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    new-instance v3, LY0/J0;

    invoke-direct {v3, v0, v2, v6}, LY0/J0;-><init>(LY0/x0;LY0/L0;I)V

    iget-object v6, v1, LY0/K0;->F:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, LY0/J0;

    invoke-direct {v3, v0, v2, v5}, LY0/J0;-><init>(LY0/x0;LY0/L0;I)V

    iget-object v5, v1, LY0/K0;->B:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, LY0/t0;

    invoke-direct {v3, v0, v2, v4}, LY0/t0;-><init>(Lu0/y;Ljava/lang/Object;I)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, LY0/J0;

    invoke-direct {v3, v0, v2, v4}, LY0/J0;-><init>(LY0/x0;LY0/L0;I)V

    iget-object v1, v1, LY0/K0;->A:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_0
    iget-object v4, v0, LY0/x0;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/booklal/booklal/Message;

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    iget-object v7, v0, LY0/x0;->f:Landroid/content/Context;

    check-cast v7, Lcom/booklal/booklal/ChatActivity;

    const-string v8, "context"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lh/i;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070246

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v7}, Lh/i;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070245

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const-string v9, "scaleType"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v10, v6

    :goto_0
    if-ge v10, v3, :cond_1

    aget v11, v4, v10

    new-instance v13, LO1/c;

    invoke-static {v7, v11}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-direct {v13, v11, v8}, LO1/c;-><init>(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v11, v9

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    move-object v11, v8

    :goto_1
    if-eqz v11, :cond_6

    const v8, 0x7f08039b

    invoke-static {v7, v8}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/i;->c(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lh/i;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070247

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {v8}, La/a;->w(F)I

    move-result v17

    invoke-virtual {v7}, Lh/i;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070249

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {v8}, La/a;->w(F)I

    move-result v18

    invoke-virtual {v7}, Lh/i;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070248

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    new-instance v8, LO1/n;

    move-object v10, v8

    move v13, v15

    move v14, v15

    invoke-direct/range {v10 .. v19}, LO1/n;-><init>(Ljava/util/Collection;IIIILandroid/graphics/drawable/Drawable;IIF)V

    new-instance v9, LO1/e;

    new-instance v10, LY0/q0;

    invoke-direct {v10, v0, v1, v4, v2}, LY0/q0;-><init>(LY0/x0;Lu0/W;[ILcom/booklal/booklal/Message;)V

    invoke-direct {v9, v7, v8, v10}, LO1/e;-><init>(Lcom/booklal/booklal/ChatActivity;LO1/n;LY0/q0;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, LY0/w0;

    const/16 v10, 0x8

    const v11, 0x3f333333    # 0.7f

    const v12, -0x777778

    const/16 v13, 0x21

    if-ne v7, v8, :cond_4

    check-cast v1, LY0/w0;

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, LY0/x0;->i(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/text/SpannableString;

    invoke-static {v5, v7}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v8, v9, v12, v15, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v9, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v9, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v8, v9, v11, v7, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, v1, LY0/w0;->A:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getFeeling()I

    move-result v7

    iget-object v1, v1, LY0/w0;->z:Landroid/widget/ImageView;

    if-ltz v7, :cond_3

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getFeeling()I

    move-result v7

    if-ge v7, v3, :cond_3

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getFeeling()I

    move-result v3

    aget v3, v4, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    new-instance v1, LY0/t0;

    invoke-direct {v1, v0, v2, v6}, LY0/t0;-><init>(Lu0/y;Ljava/lang/Object;I)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_4

    :cond_4
    check-cast v1, LY0/v0;

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getTimestamp()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v8, v15}, LY0/x0;->i(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/text/SpannableString;

    invoke-static {v14, v7}, LC/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v15}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v15, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v15, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    add-int v5, v17, v16

    invoke-virtual {v8, v15, v12, v5, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v5, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v12

    invoke-virtual {v8, v5, v11, v7, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, v1, LY0/v0;->A:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getFeeling()I

    move-result v7

    iget-object v8, v1, LY0/v0;->z:Landroid/widget/ImageView;

    if-ltz v7, :cond_5

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getFeeling()I

    move-result v7

    if-ge v7, v3, :cond_5

    invoke-virtual {v2}, Lcom/booklal/booklal/Message;->getFeeling()I

    move-result v3

    aget v3, v4, v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    new-instance v3, LY0/u0;

    invoke-direct {v3, v0, v14, v9}, LY0/u0;-><init>(LY0/x0;Ljava/lang/String;LO1/e;)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, LY0/t0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v4}, LY0/t0;-><init>(Lu0/y;Ljava/lang/Object;I)V

    iget-object v1, v1, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_4
    return-void

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty reactions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f080359
        0x7f0800ac
        0x7f08035e
        0x7f080058
        0x7f080095
        0x7f080329
    .end array-data
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 3

    iget v0, p0, LY0/x0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, LY0/x0;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00b4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, LY0/K0;

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    const v0, 0x7f090338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, LY0/K0;->z:Landroid/widget/ImageView;

    const v0, 0x7f09033a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/K0;->C:Landroid/widget/TextView;

    const v0, 0x7f090339

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/K0;->D:Landroid/widget/TextView;

    const v0, 0x7f090337

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, LY0/K0;->F:Landroid/widget/RelativeLayout;

    const v0, 0x7f09033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/K0;->E:Landroid/widget/TextView;

    const v0, 0x7f090158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, LY0/K0;->A:Landroid/widget/ImageView;

    const v0, 0x7f090103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, LY0/K0;->B:Landroid/widget/ImageView;

    return-object p2

    :pswitch_0
    iget-object v0, p0, LY0/x0;->f:Landroid/content/Context;

    check-cast v0, Lcom/booklal/booklal/ChatActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0066

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LY0/w0;

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    const v0, 0x7f09033d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, LY0/w0;->z:Landroid/widget/ImageView;

    const v0, 0x7f09033e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, LY0/w0;->A:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0065

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LY0/v0;

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, LY0/v0;->z:Landroid/widget/ImageView;

    const v0, 0x7f0902e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, LY0/v0;->A:Landroid/widget/TextView;

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
