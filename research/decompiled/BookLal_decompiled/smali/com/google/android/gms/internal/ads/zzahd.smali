.class final Lcom/google/android/gms/internal/ads/zzahd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:I

.field public zzb:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzes;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzC()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahd;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzC()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahd;->zzb:I

    return-void
.end method
