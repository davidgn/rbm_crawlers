.class public final LM3/e;
.super Lz3/l;
.source "SourceFile"

# interfaces
.implements LH3/f;


# static fields
.field public static final a:LM3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LM3/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LM3/e;->a:LM3/e;

    return-void
.end method


# virtual methods
.method public final c(Lz3/m;)V
    .locals 1

    sget-object v0, LF3/b;->a:LF3/b;

    invoke-interface {p1, v0}, Lz3/m;->a(LB3/b;)V

    invoke-interface {p1}, Lz3/m;->onComplete()V

    return-void
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
