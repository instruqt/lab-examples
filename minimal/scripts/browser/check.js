export default async ({ page }) => {
  const isVisible = await page.locator('a.button').first().isVisible({ timeout: 1000});
  return isVisible;
}