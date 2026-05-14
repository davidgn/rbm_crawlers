.class public final Lcom/google/android/gms/internal/ads/zzrn;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final zza:Z


# direct methods
.method public constructor <init>(IIIIILcom/google/android/gms/internal/ads/zzv;ZLjava/lang/Exception;)V
    .locals 4

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 p6, p6, 0x22

    add-int/2addr p6, p7

    add-int/lit8 p6, p6, 0x2

    add-int/2addr p6, v0

    add-int/lit8 p6, p6, 0x2

    add-int/2addr p6, v1

    add-int/lit8 p6, p6, 0x2

    add-int/2addr p6, v2

    invoke-direct {v3, p6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p6, "AudioTrack init failed 0 Config("

    const-string p7, ", "

    invoke-static {v3, p6, p2, p7, p3}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {v3, p7, p4, p7, p5}, LC/a;->u(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;I)V

    const-string p2, ") "

    const-string p3, ""

    invoke-static {v3, p2, p1, p3}, LC/a;->q(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrn;->zza:Z

    return-void
.end method
