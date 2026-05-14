.class final synthetic Lcom/google/android/gms/internal/ads/zzgzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgzx;

.field private final synthetic zzb:I

.field private final synthetic zzc:LN2/o;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgzx;ILN2/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgzw;->zza:Lcom/google/android/gms/internal/ads/zzgzx;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgzw;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgzw;->zzc:LN2/o;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgzw;->zza:Lcom/google/android/gms/internal/ads/zzgzx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgzw;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgzw;->zzc:LN2/o;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgzx;->zzy(ILN2/o;)V

    return-void
.end method
