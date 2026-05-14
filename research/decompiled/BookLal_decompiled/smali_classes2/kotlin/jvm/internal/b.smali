.class public abstract Lkotlin/jvm/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lq4/b;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/a;->a:Lkotlin/jvm/internal/a;

    sput-object v0, Lkotlin/jvm/internal/b;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/b;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/jvm/internal/b;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/jvm/internal/b;->name:Ljava/lang/String;

    iput-object p4, p0, Lkotlin/jvm/internal/b;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/jvm/internal/b;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lq4/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lq4/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compute()Lq4/b;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/b;->reflected:Lq4/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->computeReflected()Lq4/b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/b;->reflected:Lq4/b;

    :cond_0
    return-object v0
.end method

.method public abstract computeReflected()Lq4/b;
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/a;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/b;->receiver:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/b;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lq4/d;
    .locals 2

    iget-object v0, p0, Lkotlin/jvm/internal/b;->owner:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lkotlin/jvm/internal/b;->isTopLevel:Z

    if-eqz v1, :cond_1

    sget-object v1, Lkotlin/jvm/internal/n;->a:Lkotlin/jvm/internal/o;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/jvm/internal/k;

    invoke-direct {v1, v0}, Lkotlin/jvm/internal/k;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->getParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getReflected()Lq4/b;
.end method

.method public getReturnType()Lq4/g;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->getReturnType()Lq4/g;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/b;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lq4/h;
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->getVisibility()Lq4/h;

    move-result-object v0

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->isAbstract()Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->isFinal()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/b;->getReflected()Lq4/b;

    move-result-object v0

    invoke-interface {v0}, Lq4/b;->isOpen()Z

    move-result v0

    return v0
.end method
