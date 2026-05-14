.class public final Ll1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/l;


# instance fields
.field public final b:Lb1/l;

.field public final c:Z


# direct methods
.method public constructor <init>(Lb1/l;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll1/r;->b:Lb1/l;

    iput-boolean p2, p0, Ll1/r;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Ll1/r;->b:Lb1/l;

    invoke-interface {v0, p1}, Lb1/e;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Le1/A;II)Le1/A;
    .locals 2

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->a:Lf1/a;

    invoke-interface {p2}, Le1/A;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p3, p4}, Ll1/q;->a(Lf1/a;Landroid/graphics/drawable/Drawable;II)Ll1/c;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean p1, p0, Ll1/r;->c:Z

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unable to convert "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " to a Bitmap"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Ll1/r;->b:Lb1/l;

    invoke-interface {v1, p1, v0, p3, p4}, Lb1/l;->b(Landroid/content/Context;Le1/A;II)Le1/A;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Le1/A;->a()V

    return-object p2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, Ll1/c;

    invoke-direct {p2, p1, p3}, Ll1/c;-><init>(Landroid/content/res/Resources;Le1/A;)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ll1/r;

    if-eqz v0, :cond_0

    check-cast p1, Ll1/r;

    iget-object v0, p0, Ll1/r;->b:Lb1/l;

    iget-object p1, p1, Ll1/r;->b:Lb1/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ll1/r;->b:Lb1/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
