.class public final LN2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LN2/l;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:LN2/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LN2/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LN2/l;->c:LN2/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LN2/m;->p:LS4/b;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, LS4/b;->A(LN2/l;Ljava/lang/Thread;)V

    return-void
.end method
