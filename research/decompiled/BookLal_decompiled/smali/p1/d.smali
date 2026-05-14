.class public final Lp1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/l;


# instance fields
.field public final b:Lb1/l;


# direct methods
.method public constructor <init>(Lb1/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lp1/d;->b:Lb1/l;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lp1/d;->b:Lb1/l;

    invoke-interface {v0, p1}, Lb1/e;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Le1/A;II)Le1/A;
    .locals 4

    invoke-interface {p2}, Le1/A;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp1/c;

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/b;->a:Lf1/a;

    iget-object v2, v0, Lp1/c;->a:Lp1/b;

    iget-object v2, v2, Lp1/b;->a:Lp1/g;

    iget-object v2, v2, Lp1/g;->l:Landroid/graphics/Bitmap;

    new-instance v3, Ll1/c;

    invoke-direct {v3, v2, v1}, Ll1/c;-><init>(Landroid/graphics/Bitmap;Lf1/a;)V

    iget-object v1, p0, Lp1/d;->b:Lb1/l;

    invoke-interface {v1, p1, v3, p3, p4}, Lb1/l;->b(Landroid/content/Context;Le1/A;II)Le1/A;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v3}, Ll1/c;->a()V

    :cond_0
    invoke-interface {p1}, Le1/A;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, v0, Lp1/c;->a:Lp1/b;

    iget-object p3, p3, Lp1/b;->a:Lp1/g;

    invoke-virtual {p3, v1, p1}, Lp1/g;->c(Lb1/l;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lp1/d;

    if-eqz v0, :cond_0

    check-cast p1, Lp1/d;

    iget-object v0, p0, Lp1/d;->b:Lb1/l;

    iget-object p1, p1, Lp1/d;->b:Lb1/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lp1/d;->b:Lb1/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
