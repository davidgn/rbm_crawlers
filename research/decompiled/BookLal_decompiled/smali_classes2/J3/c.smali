.class public final LJ3/c;
.super Lz3/a;
.source "SourceFile"


# static fields
.field public static final a:LJ3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ3/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ3/c;->a:LJ3/c;

    return-void
.end method


# virtual methods
.method public final e(Lz3/b;)V
    .locals 1

    sget-object v0, LF3/b;->a:LF3/b;

    invoke-interface {p1, v0}, Lz3/b;->a(LB3/b;)V

    invoke-interface {p1}, Lz3/b;->onComplete()V

    return-void
.end method
