.class public final Le3/e;
.super Lu0/y;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Le3/j;

.field public final l:Lg3/a;

.field public final m:Ljava/lang/Boolean;

.field public final n:Ljava/lang/Boolean;

.field public final o:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;Le3/j;Lg3/a;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Lu0/y;-><init>()V

    iput-object p1, p0, Le3/e;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Le3/e;->e:Ljava/util/ArrayList;

    iput-object p3, p0, Le3/e;->m:Ljava/lang/Boolean;

    iput-object p4, p0, Le3/e;->n:Ljava/lang/Boolean;

    iput-object p5, p0, Le3/e;->f:Le3/j;

    iput-object p6, p0, Le3/e;->l:Lg3/a;

    iput-object p7, p0, Le3/e;->o:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Le3/e;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Le3/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final e(Lu0/W;I)V
    .locals 4

    iget-object v0, p0, Le3/e;->d:Ljava/util/ArrayList;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    check-cast p1, Le3/c;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le3/b;

    iput-object p2, p1, Le3/c;->z:Le3/b;

    if-eqz p2, :cond_9

    iget-object p2, p2, Le3/b;->c:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p1, Le3/c;->A:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p1, Le3/c;->z:Le3/b;

    iget-object v2, v2, Le3/b;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p2, p1, Le3/c;->z:Le3/b;

    iget-object p2, p2, Le3/b;->b:Ljava/lang/String;

    iget-object v0, p1, Le3/c;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Le3/c;->E:Le3/e;

    iget-object v0, p2, Le3/e;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p1, Le3/c;->C:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p2, Le3/e;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v3, p1, Le3/c;->D:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object v0, Le3/j;->a:Le3/j;

    iget-object p2, p2, Le3/e;->f:Le3/j;

    if-ne p2, v0, :cond_3

    iget-object p1, p1, Le3/c;->z:Le3/b;

    iget-object p1, p1, Le3/b;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_3
    sget-object v0, Le3/j;->b:Le3/j;

    if-ne p2, v0, :cond_9

    iget-object p2, p1, Le3/c;->z:Le3/b;

    iget-object p2, p2, Le3/b;->d:Le3/i;

    iget-object p2, p2, Le3/i;->b:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Le3/c;->z:Le3/b;

    iget-object p1, p1, Le3/b;->d:Le3/i;

    iget-object p1, p1, Le3/i;->c:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    check-cast p1, Le3/d;

    iget-object v0, p0, Le3/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le3/i;

    iput-object p2, p1, Le3/d;->z:Le3/i;

    if-eqz p2, :cond_9

    iget-object p2, p2, Le3/i;->d:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p1, Le3/d;->A:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    iget-object p2, p1, Lu0/W;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v2, p1, Le3/d;->z:Le3/i;

    iget-object v2, v2, Le3/i;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p2, v2}, LC/i;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p2, p1, Le3/d;->z:Le3/i;

    iget-object p2, p2, Le3/i;->b:Ljava/lang/String;

    iget-object v0, p1, Le3/d;->B:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Le3/d;->z:Le3/i;

    iget-object p2, p2, Le3/i;->c:Ljava/lang/String;

    iget-object v0, p1, Le3/d;->D:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Le3/d;->E:Le3/e;

    iget-object v2, p2, Le3/e;->m:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p1, Le3/d;->C:Landroid/widget/TextView;

    if-nez v2, :cond_6

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v2, p2, Le3/e;->n:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    sget-object v0, Le3/j;->c:Le3/j;

    iget-object p2, p2, Le3/e;->f:Le3/j;

    if-ne p2, v0, :cond_8

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    sget-object v0, Le3/j;->d:Le3/j;

    if-ne p2, v0, :cond_9

    iget-object p1, p1, Le3/d;->z:Le3/i;

    iget-object p1, p1, Le3/i;->f:Ljava/util/ArrayList;

    const-string p2, ", "

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final f(Landroid/view/ViewGroup;I)Lu0/W;
    .locals 2

    iget-object p2, p0, Le3/e;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const v1, 0x7f0c0042

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Le3/c;

    invoke-direct {p2, p0, p1}, Le3/c;-><init>(Le3/e;Landroid/view/View;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Le3/d;

    invoke-direct {p2, p0, p1}, Le3/d;-><init>(Le3/e;Landroid/view/View;)V

    return-object p2
.end method
