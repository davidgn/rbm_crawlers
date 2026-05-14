.class public final Lw1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/c;


# static fields
.field public static final a:Lw1/b;

.field public static final b:Lw1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw1/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw1/b;->a:Lw1/b;

    new-instance v0, Lw1/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw1/b;->b:Lw1/a;

    return-void
.end method
