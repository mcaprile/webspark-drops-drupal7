<?php
/**
 * @file
 * The main Behat context.
 */

use Drupal\DrupalExtension\Context\RawDrupalContext;
use Behat\Behat\Context\SnippetAcceptingContext;

/**
 * Define application features from the specific context.
 */
class FeatureContext extends RawDrupalContext implements SnippetAcceptingContext {
  /**
   * Initializes context.
   * Every scenario gets its own context object.
   *
   * @param array $parameters
   *   Context parameters (set them in behat.yml)
   */
  public function __construct() {
    // Initialize your context here
  }

    /**
     * Click some text using identifiers
     *
     * @When /^I click on the property "([^"]*)" from the element "([^"]*)" with value "([^"]*)"$/
     */
    public function iClickOnTheElement($property,$element, $nid)
    {
        $session = $this->getSession();
        $element = $session->getPage()->
        find('xpath',$session->getSelectorsHandler()->selectorToXpath('xpath', "//" . $element . "[@" . $property . "='" . $nid ."']" ));

        if (null === $element) {
            throw new \InvalidArgumentException(print('Cannot find the specified item.'));
        }

        $element->click();

    }

    /**
     * Click some text wrapped by some tag
     *
     * @When /^I click on the text "([^"]*)" in the "([^"]*)" tag$/
     */
    public function iClickOnTheText($text,$tag)
    {
        $session = $this->getSession();
        $element = $session->getPage()->
        find('xpath',$session->getSelectorsHandler()->selectorToXpath('xpath', "//" . $tag. '[text()="' . $text  . '"]'));

        if (null === $element) {
            throw new \InvalidArgumentException(print('Cannot find the specified text.'));
        }

        $element->click();

    }

//
// Place your definition and hook methods here:
//
//  /**
//   * @Given I have done something with :stuff
//   */
//  public function iHaveDoneSomethingWith($stuff) {
//    doSomethingWith($stuff);
//  }
//
}
