.class public final LY0/C0;
.super Lu0/y;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public e:Ljava/util/ArrayList;

.field public f:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LY0/C0;->d:I

    invoke-direct {p0}, Lu0/y;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LY0/C0;->d:I

    .line 2
    invoke-direct {p0}, Lu0/y;-><init>()V

    .line 3
    iput-object p1, p0, LY0/C0;->f:Landroid/content/Context;

    .line 4
    iput-object p2, p0, LY0/C0;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, LY0/C0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LY0/C0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, LY0/C0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lu0/W;I)V
    .locals 4

    iget v0, p0, LY0/C0;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LY0/a1;

    iget-object v0, p0, LY0/C0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/booklal/booklal/User;

    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/e;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/booklal/booklal/User;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getInstance()Lcom/google/firebase/database/FirebaseDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/database/FirebaseDatabase;->getReference()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    const-string v3, "chats"

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v2

    new-instance v3, LR0/i;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object p0, v3, LR0/i;->d:Ljava/lang/Object;

    iput-object p1, v3, LR0/i;->a:Ljava/lang/Object;

    iput-object v0, v3, LR0/i;->b:Ljava/lang/Object;

    iput-object p2, v3, LR0/i;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p2}, Lcom/booklal/booklal/User;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/booklal/booklal/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/booklal/booklal/User;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    iget-object v0, p1, LY0/a1;->A:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/booklal/booklal/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/booklal/booklal/User;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, LY0/a1;->A:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/booklal/booklal/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v0, p0, LY0/C0;->f:Landroid/content/Context;

    check-cast v0, Lcom/booklal/booklal/AllChatsActivity;

    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/booklal/booklal/User;->getProfileImage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v0

    const v2, 0x7f08009d

    invoke-virtual {v0, v2}, Lu1/a;->h(I)Lu1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    iget-object v2, p1, LY0/a1;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    new-instance v0, LA2/p;

    const/16 v2, 0x9

    invoke-direct {v0, v2, p0, p2}, LA2/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p1, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LY0/Y0;

    invoke-direct {v0, p0, v1, p2}, LY0/Y0;-><init>(LY0/C0;Ljava/lang/String;Lcom/booklal/booklal/User;)V

    iget-object p1, p1, LY0/a1;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :pswitch_0
    check-cast p1, LY0/B0;

    iget-object v0, p0, LY0/C0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LY0/D0;

    iget-object v0, p1, LY0/B0;->A:Landroid/widget/TextView;

    iget-object v1, p2, LY0/D0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, LY0/B0;->B:Landroid/widget/TextView;

    iget-object v1, p2, LY0/D0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, LD0/e;

    iget-object v1, p0, LY0/C0;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, LD0/e;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, LD0/e;->a:LD0/d;

    const/high16 v2, 0x40d00000    # 6.5f

    iput v2, v1, LD0/d;->h:F

    iget-object v3, v1, LD0/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    const/high16 v2, 0x42680000    # 58.0f

    iput v2, v1, LD0/d;->q:F

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {v0}, LD0/e;->start()V

    iget-object v1, p1, LY0/B0;->z:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/bumptech/glide/b;->e(Landroid/widget/ImageView;)Lcom/bumptech/glide/i;

    move-result-object v2

    iget-object v3, p2, LY0/D0;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/i;->b(Ljava/lang/String;)Lcom/bumptech/glide/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lu1/a;->i(Landroid/graphics/drawable/Drawable;)Lu1/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->t(Landroid/widget/ImageView;)V

    new-instance v0, LA2/p;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0, p2}, LA2/p;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p1, LY0/B0;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 2

    iget p2, p0, LY0/C0;->d:I

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, LY0/C0;->f:Landroid/content/Context;

    check-cast p2, Lcom/booklal/booklal/AllChatsActivity;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00b0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, LY0/a1;

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/a1;->z:Landroid/widget/TextView;

    const v0, 0x7f090100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/a1;->A:Landroid/widget/TextView;

    const v0, 0x7f0900fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, LY0/a1;->C:Landroid/widget/ImageView;

    const v0, 0x7f0900fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/a1;->B:Landroid/widget/TextView;

    const v0, 0x7f090330

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p2, LY0/a1;->D:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p2

    :pswitch_0
    iget-object p1, p0, LY0/C0;->f:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c00af

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance p2, LY0/B0;

    invoke-direct {p2, p1}, Lu0/W;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, LY0/B0;->z:Landroid/widget/ImageView;

    const v0, 0x7f0902bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, LY0/B0;->A:Landroid/widget/TextView;

    const v0, 0x7f0902c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p2, LY0/B0;->C:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, LY0/B0;->B:Landroid/widget/TextView;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
