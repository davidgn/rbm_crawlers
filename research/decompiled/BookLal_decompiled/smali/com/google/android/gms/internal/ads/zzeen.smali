.class final synthetic Lcom/google/android/gms/internal/ads/zzeen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzeen;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeen;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeen;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeen;->zza:Lcom/google/android/gms/internal/ads/zzeen;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)LN2/o;
    .locals 1

    check-cast p1, Ljava/util/concurrent/TimeoutException;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzedi;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzedi;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1
.end method
