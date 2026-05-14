.class final synthetic Lcom/google/android/gms/internal/ads/zzalf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgsk;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzalf;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzalf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfu;

    sget v0, Lcom/google/android/gms/internal/ads/zzalm;->zza:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfu;->zza:Ljava/lang/String;

    const-string v0, "auxiliary.tracks.offset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
