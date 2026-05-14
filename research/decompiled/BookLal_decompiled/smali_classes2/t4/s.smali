.class public abstract Lt4/s;
.super Lb4/a;
.source "SourceFile"

# interfaces
.implements Lb4/e;


# static fields
.field public static final b:Lt4/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lt4/r;

    sget-object v1, Lb4/d;->a:Lb4/d;

    sget-object v2, Lt4/q;->a:Lt4/q;

    invoke-direct {v0, v1, v2}, Lt4/r;-><init>(Lb4/g;Lk4/l;)V

    sput-object v0, Lt4/s;->b:Lt4/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lb4/d;->a:Lb4/d;

    invoke-direct {p0, v0}, Lb4/a;-><init>(Lb4/g;)V

    return-void
.end method


# virtual methods
.method public final b(Lb4/g;)Lb4/h;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lt4/r;

    sget-object v1, Lb4/i;->a:Lb4/i;

    if-eqz v0, :cond_2

    check-cast p1, Lt4/r;

    iget-object v0, p0, Lb4/a;->a:Lb4/g;

    if-eq v0, p1, :cond_0

    iget-object v2, p1, Lt4/r;->b:Lb4/g;

    if-ne v2, v0, :cond_1

    :cond_0
    iget-object p1, p1, Lt4/r;->a:Lkotlin/jvm/internal/j;

    invoke-interface {p1, p0}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb4/f;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p0

    goto :goto_0

    :cond_2
    sget-object v0, Lb4/d;->a:Lb4/d;

    if-ne v0, p1, :cond_1

    :goto_0
    return-object v1
.end method

.method public final f(Lb4/g;)Lb4/f;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lt4/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lt4/r;

    iget-object v0, p0, Lb4/a;->a:Lb4/g;

    if-eq v0, p1, :cond_0

    iget-object v2, p1, Lt4/r;->b:Lb4/g;

    if-ne v2, v0, :cond_2

    :cond_0
    iget-object p1, p1, Lt4/r;->a:Lkotlin/jvm/internal/j;

    invoke-interface {p1, p0}, Lk4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb4/f;

    if-eqz p1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_1
    sget-object v0, Lb4/d;->a:Lb4/d;

    if-ne v0, p1, :cond_2

    move-object v1, p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public abstract q(Lb4/h;Ljava/lang/Runnable;)V
.end method

.method public r()Z
    .locals 1

    instance-of v0, p0, Lt4/u0;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lt4/w;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
