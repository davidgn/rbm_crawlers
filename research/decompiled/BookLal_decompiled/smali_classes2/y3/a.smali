.class public final Ly3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly3/c;

.field public static final b:Lz1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly3/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly3/c;-><init>(I)V

    sput-object v0, Ly3/a;->a:Ly3/c;

    new-instance v0, Lz1/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly3/a;->b:Lz1/c;

    return-void
.end method
