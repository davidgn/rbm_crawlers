.class public final LX/o;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final a:LX/o;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LX/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/j;-><init>(I)V

    sput-object v0, LX/o;->a:LX/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, LX/m;

    check-cast p2, Ljava/lang/Throwable;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LX/l;

    if-eqz v0, :cond_1

    check-cast p1, LX/l;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "DataStore scope was cancelled before updateData could complete"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, LX/l;->b:Lt4/l;

    invoke-virtual {p1, p2}, Lt4/l;->S(Ljava/lang/Throwable;)Z

    :cond_1
    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1
.end method
