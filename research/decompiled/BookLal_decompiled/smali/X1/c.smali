.class public final LX1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX1/e;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:LY1/d;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:LT1/f;

.field public final d:LZ1/d;

.field public final e:La2/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LS1/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LX1/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;LT1/f;LY1/d;LZ1/d;La2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, LX1/c;->c:LT1/f;

    iput-object p3, p0, LX1/c;->a:LY1/d;

    iput-object p4, p0, LX1/c;->d:LZ1/d;

    iput-object p5, p0, LX1/c;->e:La2/c;

    return-void
.end method
